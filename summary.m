function [] = summary(undone)
    done = zeros(1,34);
    for x = 1:34
        done(x) = undone{x};
    end
    arousal = done(1) + done(11)+done(26);
    fprintf('This subjects total AROUSAL score was %d/30.\n', arousal)
    fprintf('The invdividual scores were %d, %d, and %d in numerical order.\n',done(1) , done(11),done(26))

    generalAnxiety = done(2) + done(12)+done(27);
    fprintf('This subjects total GENERAL ANXIETY score was %d/30.\n', generalAnxiety)
    fprintf('The invdividual scores were %d, %d, and %d in numerical order.\n',done(2) , done(12),done(27))
    
    cogAnxiety = done(3) + done(13)+done(28);
    fprintf('This subjects total COGNITIVE ANXIETY score was %d/30.\n', cogAnxiety)
    fprintf('The invdividual scores were %d, %d, and %d in numerical order.\n',done(3) , done(13),done(28))
    
    somAnxiety = done(4) + done(14)+done(29);
    fprintf('This subjects total SOMATIC ANXIETY score was %d/30.\n', somAnxiety)
    fprintf('The invdividual scores were %d, %d, and %d in numerical order.\n',done(4) , done(14),done(29))

    selfConf = done(5) + done(15)+done(21)+done(30);
    fprintf('This subjects total SELF CONFIDENCE score was %d/40.\n', selfConf)
    fprintf('The invdividual scores were %d, %d, %d, and %d in numerical order.\n',done(5) , done(15),done(21),done(30))

    skillLevel = done(6) + done(16)+done(31);
    fprintf('This subjects total SKILL LEVEL score was %d/30.\n', skillLevel)
    fprintf('The invdividual scores were %d, %d, and %d in numerical order.\n',done(6) , done(16),done(31))

    taskDiff = done(7) + done(17)+done(22)+done(32);
    fprintf('This subjects total TASK DIFFICULTY score was %d/40.\n', taskDiff)
    fprintf('The invdividual scores were %d, %d, %d, and %d in numerical order.\n',done(7) , done(17), done(22),done(32))
    
    attention = done(8) + done(18)+done(23)+done(33);
    fprintf('This subjects total ATTENTION score was %d/40.\n', attention)
    fprintf('The invdividual scores were %d, %d, %d and %d in numerical order.\n',done(8) , done(18),done(23),done(33))

    fprintf('The invdividual scores for APPRAISAL were %d, %d, and %d in numerical order.\n %d was the "boredom/stress" question"\n',done(9) , done(19),done(24), done(24))

    effort = done(10) + done(20)+done(25)+done(34);
    fprintf('This subjects total EFFORT score was %d/40.\n', effort)
    fprintf('The invdividual scores were %d, %d, %d and %d in numerical order.\n',done(10) , done(20),done(25), done(34))
end