# COVID19 Control Theory Simulation

This project explores how public policies on mask use can affect the spread
of COVID-19 through Simulink models and classical control theory.

# Motivation

The main live code file <code>Project_live.mlx</code> shows derivation and extensive analysis of the effect of multiple factors on disease spread, such as:

- Initial number of symptomatic infected individuals
- Initial number of asymptomatic infected individuals
- Initial number of immune individuals

The intuitions derived from these results are then combined with classical control theory notions derived from a linearization of an epidemiological mathematical model of COVID19 spread.

The ultimate objective of this analysis was to design a simple controller simulating possible modifications in public policies on mask use satisfy 3 criteria:

1. Minimize percentage of population required to wear a mask
2. Maintain the number of critically ill inidividuals below 1% of the population ("flatten the curve")
3. Limit the number of policy changes performed

The final controller proposed is a very simple 4 step bang-bang controller that closely resembles government action reevaluated once every 3 weeks (21 days). This controler ultimately shows reasonable performance by maitaining the number of critically by satisfying all criteria in a satisfactory and reasonable realistic manner.

# Limitations

This simulation analysis of COVID19 spread differs in many significant ways from real life, so the results obtained are merely intended to help understand the nature of virus spread and in no way suggest a guaranteed way to address this crisis. Some of the key oversimplifications used for this model are:

- Population is considered to be constant, while immigration played a vital role in the real spread of COVID19.
- People that recover from the virus are considered to be permanently immune, but at this point in time scientist have been unable to deterrmine how persistent COVID19 immunity actually is
- Virus spread is represented by an **extremely simplified** mathematial model and is likely not entirely representative of the complex nature of the COVID19 pandemic.
- Public policy regarding masks assumes the regulation is **strictly followed**, but in real life scenarios we know that these types of policies are very hard to enforce.
- Masks are assumed to be perfect at preventing virus spread, but we know that mask effectiveness greatly depends on multiple factors like proper usage, mask type, etc.
- Encounters between infected an non-infected individuals are modelled as purely random, while in real life we know that not all individuals are equaly likely to come into contact with infected individuals. For example, Healthcare workers have a much higher probability of getting COVID19 than individuals working from home
