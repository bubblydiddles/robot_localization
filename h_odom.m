function d = h_odom(U,X,theta)
    [N,~] = size(theta);
    N = N/2;
    d = zeros(2*N+2,1);
    for i = 1:N
        d(2*i-1,1) = sqrt((theta(2*i-1,1)-X(1,1))^2 + (theta(2*i,1) -X(2,1))^2);
        
        d(2*i,1) =  atan2(X(2,1)-theta(2*i,1) ,X(1,1)-theta(2*i-1,1))- X(3,1);
    end
    d((2*N+1):(2*N+2),1)= U; % Odometer Readings
end