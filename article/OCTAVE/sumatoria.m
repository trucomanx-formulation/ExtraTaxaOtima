%
S=4.0;
N=1000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

P={[0,S],[S,0]};
MP=length(P);
Po=cell(1,N);

for II=1:N
    fator=rand(1,2);
    fator=fator/sum(fator);

    Po{II}=P{1}*fator(1)+P{2}*fator(2);
end


xo=zeros(1,N);
yo=zeros(1,N);
for II=1:N
    xo(II)=Po{II}(1);
    yo(II)=Po{II}(2);
end

x=zeros(1,N);
y=zeros(1,N);
for II=1:N
    x(II)=1.0/Po{II}(1);
    y(II)=1.0/Po{II}(2);
end

sz = 20;
hs=scatter([xo,x],[yo,y],[ones(1,N) sz*ones(1,N)],[ones(1,N) 2*ones(1,N)]);
xlim([0,S]);
ylim([0,S]);
set(hs,'LineWidth',3)

print(gcf,'sumatoria.eps','-deps')

