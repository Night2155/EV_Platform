window.onload = function (argument) {

    // str = "Present Continuous Tense Perfect Past Progressive completed formula Future Personal Pronouns Demonstrative Pronoun Indefinite Interrogative Word Relative Usage Parenthesis Form Irregular Changes Coordinating Conjunctions Subordinating Intransitive Verb Adjective Clause Uncountable Noun Confused Verbs Phrase Infinitive Adjectives Other Prepositional Tool Composite Nouncing Clauses Nonfinite The Comparative Degree of Adverbs Unmodal Modal Dangling Modifier Phrases Appositive Non-real Conditions Whether Message Special Alternative Additional Disjunctive Rhetorical interrogative Exclamatory Narrative Predicate Object Complement Manners Subject Pun Active Tone Structure Semantic Grammar Basic Sentence English Direct Indirect Passive Voice Third Person second First Adverbial Participles Emphasize Strengthen Analysis General Original Transitive Perception Causative Dative Mental Linking Three-state Single Plumb Adverb Subordinate Tag Questions Articles Simple Relational Frequency Time State Status adverb Second Hypothetical Transition Countable Nouns Singular Plural Abstract Compound Patterns Application Vocabulary Conjunctive Attributive Place Cause Conditional Concession Purpose Result Way TOEIC Reflexive Real Condition Complex Cognate Declarative Imperative Subjunctive Negative Range All Negation Partial Transferred Natural Order Flip Speech Parallel Statement Behavior Possessive Case Monosyllable Superlative Affirmative Sentences Inverted Compound-Complex Infinitives Gerunds Conjunction Main Auxiliary Synonym Antonym Similar Words Prepositions Dynamic Greetings Antecedent Ellipsis Interjections Double Objects System verb Irregularity Definite Preposition Question Participle Crown Odd number Duplicate Assume Pattern Nominative Pass Three states Timeline Vowel Consonant Predicative Pronunciation Syndrome Syllable Quantifier Attribute Clarify Letter Now ";
    var str = "Be Verb is are am I can't cannot will won't could would You My did didn't do does doesn't don't Present Continuous Tense Present Perfect Tense Present Tense Past Progressive Tense Past completed formula Past Perfect Tense Future Progressive Tense Future Perfect Tense Future Tense Present Perfect Progressive Tense Personal Pronouns Demonstrative Pronoun Indefinite Pronouns Interrogative Word Relative Pronouns Pronouns Usage Parenthesis Form Irregular Changes Coordinating Conjunctions Subordinating Conjunctions Intransitive Verb Adjective Clause Uncountable Noun Confused Verbs Adjective Phrase Irregular Verbs Infinitive Adjectives Other Prepositional Tool Adjectives Composite Adjectives Nouncing Clauses Nonfinite Verbs The Comparative Degree of Adverbs Unmodal Verbs Modal Verbs Dangling Modifier Prepositional Phrases Appositive Clauses Non-real Conditions Whether Interrogative Message Interrogative Special Interrogative Alternative Interrogative Additional Interrogative Disjunctive Interrogative Rhetorical interrogative Exclamatory Interrogative Exclamatory Interrogative Narrative Adjectives Predicate Adjectives Object Complement Adverbs of Manners Object Clause Subject Clause Pun Active Tone Subject Structure Verb Structure Semantic Grammar Basic Sentence Structure English Sentence Structure Form Subject Form Object Direct Object Indirect Object Passive Voice Passive Tone Third Person second Person First Person Adverbial Conjunctions Past Participles Emphasize Tone Strengthen Tone English Grammar English Grammar Grammar Analysis Other Verbs General Verbs Original Verbs Special Verbs Transitive Verbs Verbs of Perception Causative Verbs Dative Verbs Mental Verbs Linking Verbs Three-state Verbs Single Verbs Plumb Verbs Present Participles Noun Clauses Adverb Clauses Subordinate Clauses Tag Questions Indefinite Articles Simple Adverbs Interrogative Adverbs Relational Adverbs Adverbs of Frequency Adverbs of Degree Adverbs of Time Adverbs of State Status adverb Subject Complement First Complement Second Complement Object Complement Hypothetical Tone Transition Tone Countable Nouns Singular Nouns Plural Nouns Abstract Nouns Compound Nouns Basic Sentence Patterns Verb Tense Phrase Application Verb Phrase Vocabulary Phrase Plural Nouns Prepositional Object Conjunctive Word Conjunctive Phrase Conjunctive Clause Adverbial Clause Attributive Clause Subordinating Conjunctions Adverbial of Place Adverbial of Cause Adverbial of Time Adverbial of Conditional Adverbial of Concession Adverbial of Purpose Adverbial of Result Adverbial of Way Comparative Adverbial TOEIC Active Voice Prepositional Phrase Singular Form Reflexive Pronoun Relative Pronoun Noun Clause Real Condition Direct Object Indirect Object Complex Object Complex Object Cognate Object Conditional Tone Declarative Tone Imperative Tone Subjunctive Tone Adverbs of Manners Negative Range All Negation Partial Negation Transferred Negation Natural Word Order Flip Word Order Flip All Partial Flip Direct Speech Indirect Speech Coordinating Clause Parallel Clause Direct Narrative Indirect Narrative Direct Statement Indirect Statement Parallel Verb Compound Verb Behavior Verb Behavior Verb Possessive Case Monosyllable Comparative Degree Superlative Affirmative Sentences Negative Sentences Interrogative Sentences Inverted Sentences Imperative Sentences Passive Sentences Compound-Complex Sentences Declarative Sentences Declarative Sentences Declarative Sentences Declarative Sentences Conditional Sentences Simple Past Present Future Progressive Perfect Passive Infinitives Uncountable Gerunds Conjunction Main Verbs Auxiliary Verbs Adjective Synonym Antonym Similar Words Relative Words Parenthesis Prepositions Pronoun Dynamic Greetings Plural Conjunction Compound Word Compound Phrase Appositive Prepositions Antecedent Modifier Indefinite Subordinate Sentences Compound Sentences Simple Sentences Present Sentences Ellipsis Exclamatory Sentences Exclamatory Sentences Interjections Double Objects System verb Irregularity Definite Articles Preposition Question Subject Verb Tense Grammar Participle Phrase Clause Crown Odd number Plural Noun Duplicate Adverb Flip Original Complement English Sentence Word Assume Sentence Pattern Nominative Pass Three states Person Timeline Tone Vocabulary Vocabulary Countable Vowel Consonant Word Subject Object Predicative Conjunction Pronunciation Syndrome Syllable Quantifier Adverbial Predicate Attribute Clause Clarify Letter Concession Pronoun Phrase Past Now Future Time Word Order";
    var words = {};
    var words_attr = [];
    string_handle(str);

    var canvas = document.getElementById('word-Marquee');
    canvas.width = 2000;
    canvas.height = 650;

    if (canvas.getContext) {
        var c = canvas.getContext('2d'),
            w = canvas.width,
            h = canvas.height;

        c.fillStyle = 'white';
        c.lineWidth = 3;

        // constructor
        Word = function (key) {
            this.text = key;
            this.x = Math.random() * w;
            this.y = Math.random() * h;
            this.font = words[key] * 6 + 'px Arial';
            this.speed = (words[key]) * 0.05;
        }
        for (key in words) {
            words_attr.push(new Word(key));
        }
        //console.log(words_attr.length);

        function animation() {
            for (var i = 0; i < words_attr.length; i++) {
                c.font = words_attr[i].font;
                c.fillText(words_attr[i].text, words_attr[i].x, words_attr[i].y);
                words_attr[i].width = c.measureText(words_attr[i].text).width;
                c.stroke();
            }
            move();
        }

        function move() {
            for (var i = 8; i < words_attr.length; i++) {
                if (words_attr[i].x > w) {
                    words_attr[i].x = -words_attr[i].width;
                    words_attr[i].y = Math.random() * h;
                } else {
                    words_attr[i].x += words_attr[i].speed;
                }
            }
        }

        setInterval(function () {
            c.clearRect(0, 0, w, h);
            animation();
        }, 20);

    }

    function string_handle(str) {
        var split_str = str.split(" ");
        var word_array = [];
        var word_count = [];
        for (var i = 0; i < split_str.length; i++) {
            check = true;
            for (var j = 0; j <= word_array.length; j++) {
                if (split_str[i] == word_array[j]) {
                    word_count[j]++;
                    check = false;
                    break;
                }
            }
            if (check) {
                word_array.push(split_str[i]);
                word_count.push(1);
            }
        }
        for (var i = 0; i < word_array.length; i++) {
            words[word_array[i]] = word_count[i];
        }
        return words;
    }

}