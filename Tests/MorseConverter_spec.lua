morseConverter = require("MorseConverter")

describe('Sanity Check', function()
    it("Check Sanity", function()
        assert.is_equal(1, 1)
    end)
end)

describe('ConvertMorseToWords', function()
    
    it("ConvertMorseToWords with nil as argument, return empty string", function()
        assert.is_equal("", MorseConverter:ConvertMorseToWords(nil))
    end)

    it("ConvertMorseToWords with Not String as argument, return empty string", function()
        assert.is_equal("", MorseConverter:ConvertMorseToWords(1234))
    end)
    
    -- Vowels
    it("ConvertMorseToWords with the input '.-' returns letter 'a' ", function()
        assert.is_equal("a", MorseConverter:ConvertMorseToWords(".-"))
    end)
    
    it("ConvertMorseToWords with the input '.' returns letter 'e' ", function()
        assert.is_equal("e", MorseConverter:ConvertMorseToWords("."))
    end)
    
    it("ConvertMorseToWords with the input '..' returns letter 'i' ", function()
        assert.is_equal("i", MorseConverter:ConvertMorseToWords(".."))
    end)
    
    it("ConvertMorseToWords with the input '---' returns letter 'o' ", function()
        assert.is_equal("o", MorseConverter:ConvertMorseToWords("---"))
    end)
    
    it("ConvertMorseToWords with the input '..-' returns letter 'u' ", function()
        assert.is_equal("u", MorseConverter:ConvertMorseToWords("..-"))
    end)

    -- Combined Vowels
    it("ConvertMorseToWords with the input '.- .' returns 'ae' ", function()
        assert.is_equal("ae", MorseConverter:ConvertMorseToWords(".- ."))
    end)
    
    it("ConvertMorseToWords with the input '.- . .. --- ..-' returns 'aeiou' ", function()
        assert.is_equal("aeiou", MorseConverter:ConvertMorseToWords(".- . .. --- ..-"))
    end)

    -- Alphabet in one word
    
    it("ConvertMorseToWords with the input '.- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..' returns 'abcdefghijklmnopqrstuvwxyz' ", function()
        assert.is_equal("abcdefghijklmnopqrstuvwxyz", MorseConverter:ConvertMorseToWords(".- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --.."))
    end)

    -- separated Letters

    it("ConvertMorseToWords with the input '.-  .  ..  ---  ..-' returns 'a e i o u' ", function()
        assert.is_equal("a e i o u", MorseConverter:ConvertMorseToWords(".-  .  ..  ---  ..-"))
    end)


end)