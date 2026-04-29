
# AXI UVC (Universal Verification Component)

**#overview**

This repository contains a SystemVerilog-based AXI (Advanced eXtensible Interface) Universal Verification Component (UVC) developed for verifying AXI-based DUTs. The environment is modular and reusable, supporting configurable transactions, sequences, and protocol checking.

The UVC follows a layered testbench architecture with generator, driver, monitor, and scoreboard-style verification flow.

**##Features**
#Full AXI protocol signal modeling
 -Configurable transaction class (axi_tx)
 -Master-side driver with handshake handling
 -Passive monitor for protocol observation
 -Functional coverage (axi_cov)
 -Sequence-based stimulus generation
 -Slave BFM support for response generation
 -Modular and reusable environment

**axi_uvc/**
│── axi_agent.sv        # Agent containing driver, monitor, sequencer
│── axi_base_test.sv    # Base test class
│── axi_config.sv       # Configuration class
│── axi_cov.sv          # Functional coverage
│── axi_driver.sv       # Driver to drive AXI transactions
│── axi_env.sv          # Environment integrating all components
│── axi_intf.sv         # AXI interface definition
│── axi_mon.sv          # Monitor for capturing DUT activity
│── axi_seq_lib.sv      # Sequence library
│── axi_slave_bfm.sv    # Slave Bus Functional Model
│── axi_sqr.sv          # Sequencer
│── axi_tb.sv           # Testbench top
│── axi_top.sv          # Top module
│── axi_tx.sv           # Transaction class
│── list.svh            # File list for compilation

# Verification Flow
#Sequence Generator
Creates AXI transactions (read/write)
#Sequencer
Controls flow of transactions to driver
#Driver
Drives signals onto AXI interface
#Slave BFM
Responds to AXI requests
#Monitor
Observes DUT signals and reconstructs transactions
#Coverage
Tracks protocol scenarios

**#Supported Transactions**
-AXI Write (AW, W, B channels)
-AXI Read (AR, R channels)
-Burst transfers
-Configurable IDs, addresses, and lengths
