%% IV. Multilayer Network

load mnist_all.mat

test = test0;
nNeurons = 20 % arbitrary
nHidLayers = 1 % should be variable
w1 = rand(size(test)) % weights mapping input layer to hidden layer..sizing (?)
%weights = {w1,w2}
target = 0 % corresponds to test(#) and will be used in error calculation

function output = multiLayerNetwork(test, weights, nNeurons, nHidLayers)

    for i=1:nNeurons
    NET = computeNET(test(i,:),w1(i,:));
    output = f(NET);
    end
    
end  

% Local fxns:
function NET = computeNET(inputs, inputWeights)
NET = sum(inputs.*inputWeights)
end

function OUT = f(NET)
OUT = 1/(1 + exp(-NET)) % Sigmoidal activation function
end

