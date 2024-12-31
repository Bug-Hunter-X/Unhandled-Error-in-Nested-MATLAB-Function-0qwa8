function result = myFunction(input)
  % Some code here that might cause an error...
  if input < 0
    result = -1; % Handle negative input
    return
  end

  try
    result = someOtherFunction(input); 
  catch err
    % Handle the error gracefully
    fprintf('Error encountered: %s\n', err.message);
    result = NaN; % or any other appropriate default value
  end
end

function output = someOtherFunction(x)
  if x == 0
    error('Cannot divide by zero'); % Throw an error
  end
  output = 10/x;
end