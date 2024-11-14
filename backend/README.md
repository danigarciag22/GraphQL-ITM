# Invoicer API Project

This project is a backend GraphQL API for managing invoices and related data, developed with **Node.js** and **MongoDB**. It integrates Apollo Server for handling GraphQL queries and mutations.

## Table of Contents

- [Technologies](#technologies)
- [Features](#features)
- [Installation](#installation)
- [Environment Variables](#environment-variables)
- [Usage](#usage)
- [Docker](#docker)

## Technologies

- **Node.js** (JavaScript runtime)
- **Apollo Server** (GraphQL server)
- **MongoDB** (Database)
- **Docker** (Containerization)
- **GraphQL** (Query language)

## Features

- GraphQL API for managing cartoons, customers, people, employees, and skills.
- Basic CRUD operations for employees, customers, and people.
- Easy interaction with MongoDB for storing and retrieving data.
- Dockerized application for easy deployment.

## Installation

Follow these steps to install and set up the project on your local machine.

### 1. Clone the repository

````bash
git clone https://github.com/danigarciag22/GraphQL-ITM.git
cd be_grahpql

### 2. Install dependencies

Make sure you have Node.js installed, and then run the following command to install the dependencies:

```bash
npm install

### 3. Environment Variables

Create a `.env` file in the root of the project and add the following environment variables:

```makefile
PORT=27017
MONGO_URI=mongodb://admin:secret@localhost:27017
DB_NAME=invoicerdb

### 4. Start the server

Run the following command to start the server:

```bash
yarn dev

## Usage

Once the server is running, you can interact with the GraphQL API. Below are the available queries and mutations.

### Example Queries

#### Get all cartoons

```graphql
query {
  getCartoons {
    id
    name
    city
    country
    dateOfBirth
    yearOfCreation
  }
}

#### Get all customers

```graphql
query {
  getCustomers {
    id
    name
    address
    city
    phone
    email
  }
}

#### Get all people

```graphql
query {
  getPeople {
    id
    name
    dateOfBirth
    address
    email
  }
}

## Docker

To run the application in a Docker container, follow these steps:

1. **Build and run the Docker container in detached mode**

```bash
docker-compose up -d


````
