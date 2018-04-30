function [dx,dy,dq1,dq2,dv,dfd,du2] = autoGen_simpleCarDynamics(x,y,q1,q2,v,fd,u2,u1,u3,l,a,b,m,J,tau)
%AUTOGEN_SIMPLECARDYNAMICS
%    [DX,DY,DQ1,DQ2,DV,DFD,DU2] = AUTOGEN_SIMPLECARDYNAMICS(X,Y,Q1,Q2,V,FD,U2,U1,U3,L,A,B,M,J,TAU)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    21-Apr-2018 19:47:11

t2 = sin(q1);
t3 = 1.0./l;
t4 = cos(q1);
t5 = tan(q2);
dx = v.*(t4-b.*t2.*t3.*t5);
if nargout > 1
    dy = v.*(t2+b.*t3.*t4.*t5);
end
if nargout > 2
    dq1 = t3.*t5.*v;
end
if nargout > 3
    t6 = 1.0./tau;
    t7 = l.^2;
    t8 = b.^2;
    t9 = m.*t8;
    t10 = J+t9;
    t11 = t6.*u2;
    dq2 = t11-q2.*t6;
end
if nargout > 4
    t12 = m.*t7;
    t13 = t5.^2;
    t14 = t10.*t13;
    t15 = t12+t14;
    t16 = 1.0./t15;
    dv = fd.*t7.*t16+t5.*t10.*t16.*v.*1.0./cos(q2).^2.*(t11-q2.*t6);
end
if nargout > 5
    dfd = u1;
end
if nargout > 6
    du2 = u3;
end
