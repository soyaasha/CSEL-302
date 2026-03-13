**Introduction to Intelligent Systems**

Sombrano, Mrincess Allisha C. March 10, 2026

BSCS - 2B Sir. Mark Bernardino

**PART 1 - Pre-Lab Concept Questions**

**1\. What is an agent in an Agent-Based Model?**

An agent in an Agent-Based Model is an independent entity that can make decisions and perform actions based on a set of rules within a simulation. Each agent represents an individual object such as a person, student, or system component. Agents interact with other agents and with their environment, and their individual behaviors can influence the overall outcome of the simulation. For example, in a classroom simulation, each student can be considered an agent with different levels of attention or behavior.

**2\. What is the difference between: Global Variables & Species Variables?**

Global variables are variables that apply to the entire simulation and are shared by all agents. They represent information that affects the whole system, such as the total number of students or the average attention level in the classroom. On the other hand, species variables belong to a specific type of agent or species, and each agent has its own value for those variables. For example, a student agent may have its own attention level or participation score, which may differ from other students.

**3\. What does this expression mean? student mean_of each.attention**

The expression student mean_of each.attention refers to calculating the average attention level of all student agents in the simulation. The phrase each.attention means getting the attention value of every student, while mean_of calculates the average of those values. This expression helps analyze the overall focus level of students in the simulated classroom.

**4\. What happens if attention continuously decreases without a break?**

If attention continuously decreases without any break or recovery period, students in the simulation may gradually lose focus and engagement in the activity. Over time, this may lead to lower participation, reduced performance, and a higher chance of distraction among the agents. In a classroom scenario, this situation could represent students becoming tired or uninterested, which negatively affects the overall learning environment.

**PART 2 - Run the Base Model**

**PART 3 - Data Observation Table Fill in the table after 100 cycles:**

| **Metric**                | **Value**       |
| ------------------------- | --------------- |
| Average Attention         | **0.834340134** |
| ---                       | ---             |
| Average Performance       | **0.854772277** |
| ---                       | ---             |
| High Attention Count      | **25**          |
| ---                       | ---             |
| Number of Breaks Occurred | **3**           |
| ---                       | ---             |

**PART 4 - Guided Code Analysis**

**Activity 1: Break Frequency**

Original code: if (cycle mod 30 = 0)

Task: Change break interval to: 15 cycles

Questions:

- **Does attention increase faster?**

Yes. Since the break interval is changed from 30 cycles to 15 cycles, breaks happen more frequently. This allows attention to recover sooner, so attention increases faster.

- **Does performance grow faster?**

Yes. With more frequent breaks, fatigue is reduced and the system or user can recover quicker. Because of this, performance can improve or grow faster.

- **Is the system more stable?**

Yes. The system becomes more stable because shorter work intervals prevent long periods of strain, helping maintain consistent attention and performance over time.

Activity 2: Attention Decay Rate

Original: attention <- max(0.0, attention - 0.02);

Task: Change decay rate to: 0.05

Observe:

- **Does attention collapse?**

Yes, attention is more likely to collapse. Since the decay rate is higher (0.05), attention drops quickly over time. If the system cannot recover attention fast enough, it may reach **0**, meaning attention collapses.

- **Does performance still improve?**

No, performance improves more slowly or may not improve much. Because attention decreases faster, the system has less sustained focus, which negatively affects performance growth.

- **Explain why**

The higher decay rate causes attention to drop rapidly every cycle. This makes it harder for the system to maintain focus, and frequent drops in attention can reduce overall performance. As a result, attention may reach zero faster and the improvement in performance becomes limited.

Activity 3: Performance Growth Condition

Original: if (attention > 0.6)

Task: Change threshold to: 0.8

Questions:

- Does performance improve slower?

Yes. When the threshold is increased from **0.6 to 0.8**, performance improves more slowly because attention must reach a higher level before performance can increase. Since it is harder to maintain such a high level of attention, the condition is met less often, which slows down performance growth.

- What does this represent in real classroom settings?

In a real classroom, this represents situations where students need very high focus or understanding before they can perform better. For example, if a lesson is difficult, students must concentrate more before they can improve their performance. It also shows that when learning standards or expectations are higher, improvement may take longer because students need stronger attention and understanding.

**PART 5 - Experiment: Class Size Impact (30 minutes)**

**Use parameter:**

**Initial number of students Test:**

| **Students** | **Avg Attention** | **Avg Performance** |
| ------------ | ----------------- | ------------------- |
| 10           | **0.84**          | **0.86**            |
| ---          | ---               | ---                 |
| 25           | **0.83**          | **0.85**            |
| ---          | ---               | ---                 |
| 60           | **0.82**          | **0.84**            |
| ---          | ---               | ---                 |
| 100          | **0.76**          | **0.89**            |
| ---          | ---               | ---                 |

Analysis Questions:

**1\. Does increasing class size affect average attention?**

Yes. As the number of students increases, the average attention decreases. Larger classes usually make it harder for students to stay focused because there are more distractions and less individual attention from the teacher.

**2\. Does mobility create more randomness?**

Yes. When there are more students moving or interacting, the system becomes **less predictable**. This creates more randomness in attention and behavior because many individuals are affecting the classroom environment.

**3\. Is emergent behavior visible?**

Yes. Emergent behavior can appear when many students interact in the system. Even if each student follows simple rules, group patterns such as overall performance trends or attention changes can appear at the classroom level.

**PART 6 - Data Analysis Task (Optional Python)**

Using Excel or Power Query Editor

1\. Load classroom_data.csv

2\. Plot: Attention vs Cycle & Performance vs Cycle

3\. Identify break cycles.

4\. Compute correlation between attention and performance.

**Question: Is performance strongly dependent on attention?**

The analysis of the classroom data shows that performance is strongly dependent on attention. When the attention level of students increases, the performance values also tend to increase over the simulation cycles. By plotting attention versus cycle and performance versus cycle, it can be observed that periods with higher attention levels generally correspond to improvements in performance. Additionally, breaks in the simulation temporarily restore attention, which later contributes to better performance growth. The computed correlation between attention and performance further supports this observation, indicating a positive relationship between the two variables. This means that higher attention levels lead to better learning outcomes, demonstrating that attention is a critical factor influencing student performance in the model.

**PART 7 - Critical Thinking Questions**

**1\. Why does performance only increase when attention > 0.6?**

Performance only increases when attention is greater than 0.6 because the model assumes that students need a sufficient level of focus to effectively learn and absorb information. When attention is below this threshold, students are considered distracted or not fully engaged in the learning process, so their performance does not improve. This rule reflects real classroom situations where learning outcomes are better when students are attentive and actively participating in the lesson.

**2\. Is this model deterministic or stochastic?**

This model is considered stochastic because some elements of the simulation involve randomness, such as agent movement or interactions between students. Even if the same rules are applied, the results may vary in each simulation run due to these random behaviors. This randomness allows the model to better represent real-life situations where outcomes are not always predictable.

**3\. What real-world classroom factors are missing?**

The model simplifies classroom behavior and does not include several important real-world factors. These may include the teaching style of the instructor, student motivation, classroom environment, noise and distractions, differences in learning abilities, and emotional or social factors that affect attention. These elements can significantly influence how students focus and perform in actual classroom settings.

**4\. How would peer influence affect the system?**

Peer influence could significantly affect the system because students often respond to the behavior of those around them. If students are surrounded by classmates who are attentive and motivated, their own attention may increase due to positive influence. On the other hand, if they are near distracted or disengaged peers, their attention might decrease. Including peer influence in the model could create more complex interactions and more realistic patterns of attention and performance within the classroom simulation.

**PART 8 - Advanced Extension Tasks (Choose One)**

**Option C: Fatigue Model Add:**

• If attention < 0.3 for 10 cycles → performance decreases.

The fatigue model introduces a mechanism where student performance decreases when attention remains very low for an extended period. In the model, if a student's attention drops below 0.3, a counter begins tracking how many cycles the student stays in this low-attention state. When the counter reaches ten consecutive cycles, the student's performance begins to decrease, representing the effects of prolonged fatigue or disengagement in the classroom. This extension makes the simulation more realistic because it reflects how sustained lack of attention can negatively impact learning outcomes over time.
