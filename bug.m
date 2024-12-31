function result = myFunction(input)
  % Some code here that might cause an error...
  if input < 0
    result = -1; % Handle negative input
    return
  end

  % ... More code ...

  result = someOtherFunction(input); 
  %Error occurs here if someOtherFunction throws error and is not handled
end

function output = someOtherFunction(x)
  if x == 0
    error('Cannot divide by zero'); % Unhandled error
  end
  output = 10/x;
end