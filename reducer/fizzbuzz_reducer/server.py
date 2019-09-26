# flake8: noqa: E402

import os
import sys
import asyncio

sys.path.append(os.path.dirname(os.path.dirname(__file__)))

from grpclib.server import Stream, Server
from grpclib.client import Channel

from cabane_io.reducer_grpc import ReducerBase
from cabane_io.reducer_pb2 import ReduceQuery, ReduceResult
from cabane_io.fizzer_grpc import FizzStub
from cabane_io.fizzer_pb2 import FizzQuery, FizzResponse
from cabane_io.buzzer_grpc import BuzzStub
from cabane_io.buzzer_pb2 import BuzzQuery, BuzzResponse


class ReducerService(ReducerBase):
    @classmethod
    def start(cls):
        asyncio.run(cls.serve())

    @classmethod
    async def serve(cls):
        loop = asyncio.get_running_loop()
        service = cls()

        host = get_service_host("reducer")
        port = get_service_port("reducer")

        service.setUp()
        server = Server([service], loop=loop)
        print(f'Server running at {host}:{port}')
        await server.start(host, port)
        await server.wait_closed()

    def setUp(self):
        fizz_channel = Channel(get_service_host("fizz"),
                               get_service_port("fizz"),
                               loop=asyncio.get_running_loop())
        self.fizz_client = FizzStub(fizz_channel)

        buzz_channel = Channel(get_service_host("buzz"),
                               get_service_port("buzz"),
                               loop=asyncio.get_running_loop())
        self.buzz_client = BuzzStub(buzz_channel)

    async def Ask(self, stream: Stream):
        fizz_result: FizzResponse
        buzz_result: BuzzResponse

        query: ReduceQuery = await stream.recv_message()

        fizz_future = self.fizz_client.Ask(FizzQuery(number=query.number))
        buzz_future = self.buzz_client.Ask(BuzzQuery(number=query.number))

        fizz_result, buzz_result = await asyncio.gather(
            fizz_future,
            buzz_future,
            loop=asyncio.get_running_loop(),
        )

        message = ""
        if fizz_result.isFizz:
            message += "Fizz"

        if buzz_result.isBuzz:
            message += "Buzz"

        await stream.send_message(ReduceResult(message=message))


def get_service_host(service_name: str) -> str:
    return os.environ.get(f"{service_name.upper()}_SERVICE_HOST", "127.0.0.1")


def get_service_port(service_name: str) -> int:
    return int(os.environ.get(f"{service_name.upper()}_SERVICE_PORT", "50051"))


if __name__ == "__main__":
    ReducerService.start()
