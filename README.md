# Rust Dev Container

This is a quick set-up for docker to build a rust app. This will compile code for your rust app, then build a debian slim image to be able to run the code.

## Steps

1. Run `git clone` on this repository

    ```bash
    git clone https://github.com/b1tsized/rust-dev-container.git
    ```

2. `cd` into directory

    ```bash
    cd ./rust-dev-container
    ```

3. Edit the rust app

4. Build your rust app

    ```bash
    docker build -t my-rust-app .
    ```

5. Run the rust app

    ```bash
    docker run -it --rm --name my-running-app my-rust-app
    ```