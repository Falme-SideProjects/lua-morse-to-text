MorseConverter = {}

Alphabet = {
    [".-"] =     "A",
    ["-..."] =   "B",
    ["-.-."] =   "C",
    ["-.."] =    "D",
    ["."] =      "E",
    ["..-."] =   "F",
    ["--."] =    "G",
    ["...."] =   "H",
    [".."] =     "I",
    [".---"] =   "J",
    ["-.-"] =    "K",
    [".-.."] =   "L",
    ["--"] =     "M",
    ["-."] =     "N",
    ["---"] =    "O",
    [".--."] =   "P",
    ["--.-"] =   "Q",
    [".-."] =    "R",
    ["..."] =    "S",
    ["-"] =      "T",
    ["..-"] =    "U",
    ["...-"] =   "V",
    [".--"] =    "W",
    ["-..-"] =   "X",
    ["-.--"] =   "Y",
    ["--.."] =   "Z"
}

function MorseConverter:ConvertMorseToWords(morse)
    
    if(morse == nil or type(morse) ~= 'string') then 
        return ""
    end

    local t={}
    local lengthNum = 0;

    local result = ""

    for str in string.gmatch( morse, "([^%s]*)" ) do
        table.insert( t, str )
        lengthNum = lengthNum+1
    end

    for i=1,lengthNum do

        if(Alphabet[t[i]] ~= nil) then
            result= result..string.lower(Alphabet[t[i]])
        elseif Alphabet[t[i]] == nil and Alphabet[t[i+1]] == nil then
            result= result.." "
        end
    end

    
    return result
end


function main()
    print("== MORSE CODE TO TEXT ==")
    local s = io.read()
    print(MorseConverter:ConvertMorseToWords(s))
end

main()