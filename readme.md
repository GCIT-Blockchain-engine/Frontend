# EduChain GCIT Frontend - README

## Overview
This project is the frontend for the EduChain GCIT blockchain engine, allowing users to interact with blockchain nodes, create wallets, perform transactions, and visualize blockchain data. The frontend consists of several pages including account management, blockchain explorer, and demo interfaces, using HTML, CSS, JavaScript, and the D3.js library.

## Features
- **Wallet Management**: Create wallets, display public/private keys, and manage balances.
- **Transaction Management**: Send transactions between accounts and mine new blocks.
- **Blockchain Visualization**: Visualize the blockchain structure using D3.js.
- **Transaction Explorer**: Search transactions by address or transaction ID, verify signatures, and view details.
- **Testnet Support**: Create and manage credentials for interacting with EduChain test networks.



## Pages Overview
### 1. Account Management (`index.html`)
- Provides a UI for creating wallet accounts, displaying public and private keys, and showing current balances.
- Supports sending transactions and logs successful transactions in a textarea.
- Communicates with the backend via REST API for wallet creation and balance retrieval.

### 2. Blockchain Explorer (`explorer.html`)
- Allows users to explore the blockchain by searching for transactions using a public address or transaction ID.
- Displays details such as transaction ID, sender/recipient, amount, signature, and timestamp.
- Includes a feature for verifying the validity of transaction signatures.

### 3. Blockchain Visualization (`demo.html`)
- Uses D3.js to render a graphical representation of the blockchain network.
- Displays multiple nodes, their blocks, and connections to illustrate blockchain consensus.
- Each node and block is color-coded based on its `merkle_root` to identify similarities between chains.

### 4. Resources Page (`resources.html`)
- Lists available resources including testnet faucets for testing blockchain interactions without using real funds.
- Allows the user to generate test credentials, which are displayed in a collapsible credentials section.

## Getting Started
### Prerequisites
- **Node.js** and **npm** (for backend communication)
- A running **backend blockchain engine** (accessible at `http://127.0.0.1:5000`, `http://127.0.0.1:5001`, `http://127.0.0.1:5002`).

### Setup
1. **Clone the Repository**:
   ```sh
   git clone <repository-url>
   cd project-folder
   ```

2. **Run Backend Services**:
   Ensure the backend services are running on the specified ports before starting the frontend.

3. **Open HTML Pages**:
   You can directly open the HTML files in your browser:
   ```sh
   open index.html
   ```
   Alternatively, serve the files using a local server like **Live Server** for better performance.

## Interacting with the Application
### Creating a Wallet
- Click "Create Account" on the Standby or Operational container to generate a new wallet.
- The generated credentials (public and private key) are saved in the browser's `localStorage`.

### Sending Transactions
- Enter a recipient address, amount, and private key in the "Send" section to initiate a transaction.
- Transaction details are sent to the backend and the response is displayed in the transaction log.

### Exploring Blockchain Data
- Use the Blockchain Explorer to search transactions by address or ID.
- View transaction details in the table or verify a transaction using the form at the bottom.

## Technologies Used
- **HTML/CSS/JavaScript**: Core technologies for web development.
- **D3.js**: Visualization library used for rendering blockchain network graphs.
- **Fetch API**: Used to make requests to the backend blockchain nodes.

## REST Endpoints
- **Wallet Creation**: `/wallet/create` (POST) - Creates a new wallet.
- **Get Balance**: `/balance/{publicKey}` (GET) - Retrieves balance for the specified address.
- **Transaction**: `/transaction/create` (POST) - Creates a new transaction.
- **Verify Transaction**: `/transaction/verify` (POST) - Verifies a given transaction signature.
- **Fetch Chain**: `/chain` (GET) - Retrieves the current blockchain data for visualization.


## License
This project is licensed under the **MIT License**. Feel free to use, modify, and distribute as per the license terms.

