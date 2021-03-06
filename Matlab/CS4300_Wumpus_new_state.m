function is_new =  CS4300_Wumpus_new_state(next_state,frontier,explored, explored_size, nodes)
% CS4300_Wumpus_new_state - check if the new states have already been encountered in the past
% On input:
%       next_state (1x3 vector): x,y,dir of node
%       frontier (PriorityQueue): Priority Queue of nodes and costs
%       explored (vector): A vector of nodes for explored nodes
%     nodes (search tree data structure): nodes of search tree
%       (i).parent (int): index of parent
%       (i). level (int): level in tree
%       (i).state (1x3 vector): x,y,dir of node
%       (i).action (int): action taken to get to this state
%       (i).cost (int): path cost to this node fro mroot
%       (i).children (1xk vector): indexes of node's children
% On output:
%     is_new (Boolean): 1 if state is new; else 0
% Call:
%     is_new = CS4300_Wumpus_new_state(next_state,frontier,explored,nodes);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
%
is_new = 1;

% check frontier
for i = 1:frontier.size
    node = nodes(frontier.queue{1,i}(1));
    if(node.state(1) == next_state(1) && node.state(2) == next_state(2)  && node.state(3) == next_state(3))
        is_new = 0;
        break;
    end
end

% check explored
for i = 1:explored_size
    node = nodes(explored(i));
    if(node.state(1) == next_state(1) && node.state(2) == next_state(2) && node.state(3) == next_state(3))
        is_new = 0;
        break;
    end
end