-- The functions

function extract_words(path_to_file)
	
	local words = {}
	local text
	
	if type(path_to_file) ~= "string" or path_to_file == nil then 
		return []
	else
		if pcall(function ()
			local file = io.open(path_to_file,"r")
			text = file:read("*all")
			file:close()
			end) then 
		else
			io.write(string.format("I/O error when opening ", path_to_file, "\n"))
			return {}
		end
	end
	
	for word in string.gmatch(text, "%w+") do
		table.insert(words, string.lower(word))
	end
	return words
end
	
function remove_stop_words(word_list)
	if type(word_list) ~= "table" then 
		return []
	end
	if pcall(function () 
		local file = io.open('../stop_words.txt',"r")
		local stop_words = file:read("*all")
		stop_words_final = {}
		for word in string.gmatch(stop_words, '([^,]+)') do
			table.insert(stop_words_final, string.lower(word))
		end
		file:close()
		end) then
	else
		io.write(string.format("I/O error when opening ../stop_words.txt: ", path_to_file, "\n"))
		return {}
    end
    words_list_final = {}
    for c, w in pairs(word_list) do
        lower_word = w:lower()
        if(not has_value(stop_words_final, lower_word))then 
            table.insert(words_list_final, lower_word)
        end
    end
    -- traduzir para lua
    -- stop_words.extend(list(string.ascii_lowercase))
    -- return [w for w in word_list if not w in stop_words]
    return words_list_final
end

function has_value (tab, val)
    for index, value in ipairs (tab) do
        if value == val then
            return true
        end
    end

    return false
end

function frequencies(word_list)
    if type(word_list) ~= "table" or word_list == {} then
		return {}
	end
    word_freqs = {}
    for index, word in pairs( word_list ) do
        if word_freqs[word] = 0
    end

    for index, word in pairs( word_list ) do
        word_freqs[word] = word_freqs[word] + 1
    end

    return word_freqs
end

function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

function sort(word_freq)
	if type(word_freq) ~= "table" or word_freq == {} then
	return {}
	end
	
	local sortedWords = {}
	
		for k,v in spairs(word_freq, function(t,a,b) return t[b] < t[a] end) do
			if(v > 200) then
				print(k .. "-" .. v)
			end
		end
		return word_freq
end

function len(tab)
	local count = 0;
	for index in pairs(T) do 
		count = count + 1
	end

	return count
end


--The main function

function main()
	local filename = io.read("*all")
	if len(filename) <= 1 then
		io.write("../input.txt")
	else
			word_freqs = sort(frequencies(remove_stop_words(extract_words(arg[1]))))
	end
	
	local index = 0
	
	for index < 25,words in word_freq do 
		io.write(word_freq[index])
end
main()
