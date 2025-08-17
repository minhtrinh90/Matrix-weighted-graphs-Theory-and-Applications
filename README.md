# Matrix-weighted graphs: Theory and Applications

Minh Hoang Trinh (FPT University, Quy Nhon, Vietnam), Hyo-Sung Ahn (Gwangju Institute of Science and Technology, Gwangju, Republic of Korea)

Index of MATLAB :tm: /SIMULINK :tm: simulation files in the book.
Version: MATLAB R2022b

## Part I Graphs and networks with matrix weights
### 1 Matrix-weighted graphs
####    1.1 From scalar- to matrix-weighted graphs
####    1.2 Matrix-weighted graph
####    1.3 Notes and references
### 2 Matrix-weighted Laplacian
####    2.1 Undirected and leader-follower topologies
Example 2.1 & 2.2: c2_MatrixWeightedLaplacian.mlx
####    2.2 Directed topologies
#####   2.2.1 General properties
#####   2.2.2 Directed acyclic leader-follower graphs
#####   2.2.3 Generalized balanced graphs
Example 2.3: c2_GeneralizedBalance.mlx
#####   2.2.4 Directed cycles
####    2.3 Notes and references
### 3 Physical interpretation and motivational examples
#### 3.1 Matrix weights
##### 3.1.1 Multi-layer and social networks
##### 3.1.2 Networked input-output economic model
##### 3.1.3 Formation control
##### 3.1.4 Network localization
##### 3.1.5 Mechanical- and electrical networks
### 3.2 Electrical analogies of matrix-weighted networks
##### 3.2.1 Voltage and current flow
##### 3.2.2 Effective resistance
##### 3.2.3 Energy
### 3.3 Notes and references
## Part II Algorithms
### 4 Connectivity
#### 4.1 Algebraic criteria for connectedness
#### 4.2 Algebraic graph conditions for connectedness and clustering
#### 4.3 Warshall algorithm for matrix-weighted graphs
c4_WarshallAlgs.mlx
#### 4.4 Discussions and examples
#### 4.5 Notes and references
### 5 Spanning trees
#### 5.1 Expanded and quasi-expanded positive spanning trees
Example 5.3: Alg3_chap5.m
#### 5.2 Matrix-tree theorem
#### 5.3 Expanded positive spanning trees with minimum edges
#### 5.4 Generating matrix-weighted graphs with prescribed number of clusters
#### 5.5 Notes and references
### 6 Quantitative measures
#### 6.1 The energy of a matrix-weighted graph
#### 6.2 The matrix-weighted resistance distances
#### 6.3 Vertex- and edge importance
#### 6.4 Notes and references
## Part III Control
### 7 Matrix-weighted consensus
#### 7.1 Matrix-weighted consensus
##### 7.1.1 Basic definitions
##### 7.1.2 Matrix-weighted consensus algorithm
Example 7.1: c7_MWC_undirected.mlx

Example 7.2: c7_genBalanceGraphs_Single_Integrators.mlx
##### 7.1.3 Leader-follower matrix-weighted consensus
Example 7.4: c7_MWC_undirected_LFF.mlx
#### 7.2 Matrix-weighted consensus of double integrators
##### 7.2.1 Generalized balance topology
Example 7.5: c7_genBalanceGraphs_Double_Integrators.mlx
##### 7.2.2 Directed cycles
Example 7.6: c7_DirectedCycle_Double_Integrators.mlx
#### 7.3 Matrix-weighted consensus of higher-order integrators
Example 7.7: c7_DirectedCycle_Triple_Integrators.mlx
#### 7.4 Notes and references
### 8 Discrete-time and randomized algorithms
#### 8.1 Discrete-time matrix-weighted consensus
##### 8.1.1 Leaderless topology
Example 8.1: c8_generalizedBalance_DT.mlx
##### 8.1.2 Leader-follower topology
Example 8.2: c8_generalizedBalance_DT_LFF.mlx
#### 8.2 Randomized matrix-weighted consensus
##### 8.2.1 The expected matrix-weighted graph
##### 8.2.2 The randomized algorithm
##### 8.2.3 Convergence analysis
##### 8.2.4 Application to bearing-based network localization
c8_GossipNetworkLocalization.mlx
#### 8.3 Notes and references
### 9 Accelerated algorithms
#### 9.1 Fast convergence matrix-weighted consensus algorithms
##### 9.1.1 Finite-time and fixed-time stability
##### 9.1.2 Finite-time matrix-weighted consensus
##### 9.1.3 Fixed-time matrix-weighted consensus
Example 9.1: c9_FT_MWC.mlx
#### 9.2 Accelerated matrix-weighted consensus algorithms using memories
##### 9.2.1 Continuous-time algorithm
Example 9.2: c9_Accelated_MWC.mlx, c9_acc_via_delays.slx, c9_acc_via_delays1.slx, c9_acc_without_delays.slx
##### 9.2.2 Discrete-time algorithm
#### 9.3 Notes and references
### 10 Robustness
#### 10.1 Adaptive matrix-weighted consensus algorithms
##### 10.1.1 Single-integrators with uncertainties
Example 10.1: c10_Adaptive_MWC_single_integrators.mlx
##### 10.1.2 Double-integrators with matched uncertainties
Example 10.2: c10_Adaptive_MWC_double_integrators.mlx
##### 10.1.3 Higher-order integrators with matched uncertainties
#### 10.2 Disturbance observers
##### 10.2.1 Single-integrator agents with disturbance
Example 10.3: c10_DoB_MWC_single_integrators.mlx
##### 10.2.2 Double-integrator agents
###### 10.2.2.1 Matched disturbance
Example 10.4: c10_DoB_MWC_double_integrators.mlx
###### 10.2.2.2 Mismatched disturbance
Example 10.5: c10_DoB_MWC_double_integrators_mismatch.mlx
##### 10.2.3 Higher-order integrator agents with mismatched disturbances
#### 10.3 Sliding-mode
##### 10.3.1 Single-integrator agents
Example 10.6: c10_smc_MWC_single_integrators.mlx
##### 10.3.2 Double-integrator agents
Example 10.7: c10_smc_MWC_double_integrators.mlx
#### 10.4 Notes and references
### 11 Tracking
#### 11.1 The matrix-weighted consensus tracking problem
#### 11.2 Leaders with constant velocity
##### 11.2.1 Single-integrator follower agents: PI consensus tracking
Example 11.1: c11_PI_single_integrators.mlx
##### 11.2.2 Double-integrator follower agents: Consensus tracking without velocity measurement
Example 11.2: c11_WithoutVel_double_integrators.mlx
#### 11.3 Disturbance observer
##### 11.3.1 Single-integrator follower agents
Example 11.3: c11_DistObsv_single_integrators.mlx
##### 11.3.2 Double-integrator follower agents
Example 11.4: c11_DistObsv_double_integrators.mlx
#### 11.4 Sliding-mode
##### 11.4.1 Single-integrator follower agents
Example 11.5: c11_smc_single_integrators.mlx

Example 11.6: c11_asmc_single_integrators.mlx, c11_vasmc_single_integrators.mlx
##### 11.4.2 Double-integrator follower agents
Example 11.7: c11_smc_double_integrators.mlx
#### 11.5 Notes and references
### 12 Time-delays
#### 12.1 Matrix-weighted consensus with a uniform time-delay
Example 12.1: c12_ConsensusWithDelaysModel1.mlx, c12_ConsensusDelaysModel1.slx
#### 12.2 Matrix-weighted consensus with heterogeneous constant time-delays
Example 12.2: c12_ConsensusMultiDelaysModel.slx, c12_ConsensusMultiDelaysModel.slx, c12_MultipleDelaysLMI.m
#### 12.3 Adaptive algorithm for unknown constant time-delays
##### 12.3.1 Adaptive matrix-weighted consensus algorithm
Example 12.3: c12_delayMWCAdaptive.mlx, c12_AdapDelayConsensus.mlx
##### 12.3.2 Matrix-weighted consensus with heterogeneous time-delays
Example 12.4: c12_MultiDelayMWCAdaptive.mlx, c12_ConsensusMultiDelaysModel.slx
#### 12.4 Notes and references
## Part IV Applications
### 13 Synchronization
#### 13.1 The state synchronization problem
#### 13.2 Leaderless synchronization
##### 13.2.1 Observer-based adaptive synchronization algorithm
##### 13.2.2 Convergence analysis
Example 13.1: c13_Synchronization.mlx
#### 13.3 Leader-follower synchronization of homogeneous LTI agents
##### 13.3.1 Observer-based adaptive synchronization algorithm
##### 13.3.2 Convergence analysis
Example 13.2: c13_Synchronization_LF.mlx
#### 13.4 Notes and references
### 14 Scaling matrices
#### 14.1 Matrix-scaled consensus over undirected matrix-weighted networks
##### 14.1.1 Matrix-scaled consensus
##### 14.1.2 Geometry of the matrix-scaled consensus space in R^2
##### 14.1.3 Properties of the matrix-scaled Laplacian
##### 14.1.4 Matrix-scaled consensus algorithm
Example 14.2: c14_MatrixScaleConsensus.mlx
#### 14.2 Multi-dimensional Altafini model with scaling matrices
##### 14.2.1 Signed matrix-weighted graphs
##### 14.2.2 Bipartite consensus over undirected signed matrix-weighted graphs
##### 14.2.3 Bipartite consensus over generalized balanced signed matrix-weighted graphs
Example 14.3: c14_MScaled_bipartite.mlx, c14_bipartite_MWconsensus_animation.m
##### 14.2.4 Matrix-scaled consensus over signed undirected matrix-weighted graphs
Example 14.4: c14_MScaled_bipartite.mlx
#### 14.3 Notes and references
### 15 Networked input-output economic model
#### 15.1 Modeling
##### 15.1.1 Perron-Frobenius theorem
##### 15.1.2 Leontief's input-output economic model
##### 15.1.3 The networked input-output model and problem formulation
#### 15.2 Distributed computation of the equilibrium price structure
##### 15.2.1 The proposed algorithm
##### 15.2.2 The closed networked input-output model
##### 15.2.3 The open networked input-output model
#### 15.3 Simulation results
##### 15.3.1 A closed input-output economic network
c15_closed_model.m
##### 15.3.2 An open input-output economic network
c15_open_model.m
#### 15.4 Notes and references
### 16 Bearing-only formation control
#### 16.1 Bearing vectors and bearing-only measurement based navigation
#### 16.2 Leader-first follower formations
##### 16.2.1 Bearing-based Henneberg construction
##### 16.2.2 Bearing-only control of leader-first follower formation
Example 16.1: c16_LFF_formations.mlx
#### 16.3 Notes and references
### A Linear algebra
### B Control theory
### C Proofs
