#!/usr/bin/env -S uv run

import sys

import idapro
import ida_auto


def main(binary_path: str) -> None:
    idapro.open_database(binary_path, run_auto_analysis=True)
    ida_auto.auto_wait()
    idapro.close_database(save=True)


if __name__ == "__main__":
    main(*sys.argv[1:])
