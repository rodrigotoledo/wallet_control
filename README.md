# Wallet Control

Wallet Control is a Ruby on Rails application designed to help you manage and track your expenses. Whether you're handling personal finances, family budgets, or sharing expenses with others, Wallet Control provides a user-friendly interface and alert system to keep your financial tracking on point.

## Features

- **Expense Tracking:** Log and categorize your expenses effortlessly.
- **Family and Shared Wallets:** Collaborate with family members or other individuals to track shared expenses.
- **Alerts:** Set up personalized alerts to stay informed about your spending habits.
- **Rails 7 and PostgreSQL:** Built using the latest Rails version and PostgreSQL database for reliability and performance.
- **Test-Driven Development (TDD):** Utilizes Guard for automated testing, following a Test-Driven Development methodology to ensure robust and reliable code.

## Requirements

- Ruby 3.2.1
- Rails 7
- PostgreSQL
- Turbo Streams: For seamless and instant updates in the user interface.
- Redis: An in-memory data store for efficient storage and retrieval of chat data.
- Docker: Containerization for easy deployment and scalability.

## Getting Started

1. Clone the repository:

  ```bash
  git clone https://github.com/rodrigotoledo/wallet_control.git
  cd wallet_control
  ```

2. Install dependencies and setup the database:

  ```bash
  bundle install
  rails db:create db:migrate db:seed
  ```

3. Start the application:

  ```bash
  rails server
  ```

Visit http://localhost:3000 in your browser.

## Automated Testing
Wallet Control follows a Test-Driven Development (TDD) approach, and automated tests are managed using Guard. Run the following command to initiate the test suite:

  ```bash
  bundle exec guard
  ```

After this you can open the directory coverage and the file index.html, which contains the coverage information.

- **Real-time Actions:** Utilizing Turbo Streams for instant updates and a smooth real-time Operations.
- **Efficient Data Management:** Redis is employed for fast and efficient storage and retrieval of wallet data.

## Development with Docker

### Prerequisites

Make sure you have the following installed on your machine:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

1. Clone the repository:

  ```bash
  git clone https://github.com/rodrigotoledo/wallet_control.git
  ```

2. Navigate to the project directory:

  ```bash
  cd wallet_control
  ```

3. Running the database and populating with seeds

  ```bash
    docker compose run web rails db:create db:migrate db:seed
  ```

4. Build and run the Docker containers:

  ```bash
    docker compose up --build
  ```

5. Upgrading gems with docker

  ```bash
    docker compose run web bundle update
  ```

6. Access the application in your browser at http://localhost:3000

7. Access the application in your terminal

  ```bash
    docker compose run --service-ports rails bash
  ```

8. Development and testing

  ```bash
  docker compose run web bundle exec guard
  ```

## Usage
  1. Create your account with wallet information.
  2. Create or invite a familiar to be under your wallet control.
  3. Wait for the accepted transaction over the familiar wallet.


## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.
  - Author: Rodrigo Toledo <rodrigo@rtoledo.inf.br>

## License
This project is licensed under the MIT License.
