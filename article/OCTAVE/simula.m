%
P={[0,0], [0,1], [1,0], [0.2,0.6] };

N=1000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MP=length(P);
Po=cell(1,N);

for II=1:N
    Po{II}=[0 0];
    fator=rand(1,MP);
    fator=fator/sum(fator);
    for JJ=1:MP
        Po{II}=Po{II}+P{JJ}*fator(JJ);

    end
end

x=zeros(1,MP);
y=zeros(1,MP);
for II=1:MP
    x(II)=P{II}(1);
    y(II)=P{II}(2);
end

xo=zeros(1,N);
yo=zeros(1,N);
for II=1:N
    xo(II)=Po{II}(1);
    yo(II)=Po{II}(2);
end

%scatter(xo,yo);
%hold on
sz = 20;
hs=scatter([xo,x],[yo,y],[ones(1,N) sz*ones(1,MP)],[ones(1,N) 2*ones(1,MP)]);
set(hs,'LineWidth',3)
%hold off

print(gcf,'plano.eps','-deps')

