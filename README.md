# QL - Wow that's Ql!
###### (I know, I'm awful)

Minimal tic-tac-toe project implementing a Q learning approach to reinforcemnet learning for training an agent.


Features:
- [ ] Play Against a Friend
- [ ] Play Against AI Agent
- [ ] Watch AI Agents train and compete against each other


Project Roadmap:

- [x] ~~Design the user interface: board, responsive tiles, start screen.
- [x] ~~Define the state space: I will represent the Tic Tac Toe board as a 3x3 matrix, where each element can be either "X", "O", or empty.
- [ ] Define the action space: I will define the action space as all possible moves the agent can make in each state, which means choosing an empty cell to place my symbol.
- [ ] Define the reward function: The reward function determines the reward I receive for taking a particular action in a particular state. In Tic Tac Toe, I will give a reward of +1 if I win, -1 if I lose, and 0 for a tie.
- [ ] Define the Q-table: The Q-table is a table that stores the estimated value of taking a particular action in a particular state. I will initialize this table with small random values.
- [ ] Implement the Q-learning algorithm: I will update the Q-table as I interact with the environment. In each iteration, I will select an action, receive a reward, and update the Q-table based on the current state, action, and reward.
- [ ] Train the agent: I will train the agent by having it play against itself or by playing against the agent myself. The more the agent plays, the better it becomes at the game.
- [ ] Use the Q-table to make decisions: Once the agent is trained, it can use the Q-table to make decisions in real-time. In each state, the agent will select the action with the highest Q-value.
