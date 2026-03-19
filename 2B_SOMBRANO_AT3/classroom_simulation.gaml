model classroom_simulation

// ===== Student Agent Definition =====
species student {

    int energy <- 5;
    int score <- 0;
    string status <- "active";

    reflex participate when: status = "active" {
        if flip(0.4) {
            score <- score + 1;
            energy <- energy - 1;
        }
    }

    reflex update_status {
        if energy <= 0 {
            status <- "inactive";
        }
    }
}

// ===== Global Environment =====
global {

    init {
        create student number: 20;
    }

}

// ===== Experiment =====
experiment classroom_experiment type: gui {

    output {

        display classroom_display {
            species student;
        }

        monitor "Average Energy" value: mean(student collect each.energy);
        monitor "Average Score" value: mean(student collect each.score);
        monitor "Active Students" value: length(student where (each.status = "active"));

    }
}