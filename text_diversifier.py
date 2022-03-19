import random
import pyperclip

'''
THIS PROGRAM TRANSLATE HUMAN LANGUAGE INTO SELECTED ANIMAL LANGUAGES
'''
def animal_translator(): 
    # dictionary containing animal language keywords
    animal_chars = {
        'pig' : 'oink',
        'cow' :'moo',
        'goose' : 'honk',
        'cat' : 'meow',
        'duck' : 'quack',
        'dog' : 'ruP',
        }

    # getting & processing input 
    print('We support translating to pig, cow, goose, cat, duck, and dog language.')
    key = input('Enter language of choice: ').strip()
    if key not in animal_chars.keys(): 
        print('Chosen language not supported. Default is chosen: goose.')
        animal = animal_chars['goose']
    else: 
        animal = animal_chars[key]
        print(f'You have chosen {key} language.')

    hooman_string = input('Enter your message in human language: ')

    # converting to animal language 
    hooman_list = hooman_string.split()
    animal_list = [animal for i in range(len(hooman_list))] # list after replacing each human word with an animal word 
    animal_string = ' '.join(animal_list)
    print(f'Your message in {key} language: {animal_string}')

    # copy to clipboard
    print("Copy to clipboard?")
    copy_consent = input()
    if copy_consent == 'Y':
        pyperclip.copy(animal_string)
        print("Message copied to clipboard.")
    else: 
        print("Message not copied to clipboard.")
    
'''
THIS PROGRAM GIVES YOUR TEXT A PASSIVE AGGRESSIVE ATTITUDE BY ALTERNATING CASES
'''
def mocking_string_editor(): 
    #getting input 
    original_string = input('Enter your neutral text: ')
    mocking_list = []
    for i in range(0, len(original_string)):
        if random.random() <= 0.5: 
            upped_char = original_string[i].upper()
            mocking_list.append(upped_char)
        else: 
            low_char = original_string[i]
            mocking_list.append(low_char)
    mocking_string = ''.join(mocking_list)
    print(f"Here's your mocking text: {mocking_string}")
    
    # copy to clipboard
    print("Copy to clipboard?")
    copy_consent = input()
    if copy_consent == 'Y':
        pyperclip.copy(mocking_string)
        print("Message copied to clipboard.")
    else: 
        print("Message not copied to clipboard.")

'''
THIS PROGRAM GIVES YOUR TEXT A BIT MORE ATTITUDE BY INSERTING EMOJIS
'''
def fairy_text_editor(): 
    # dictionary containing emoji themes 
    emo_theme = {
        'sparkle' : '✨🎇🌟⭐🌠💥',
        'hot' : '🔥🧨🎆🥵🌶️♨️',
        'cool' : '🥶🧊🍦😰❄️⛄',
        'plant' : '🌴🌻🍀🍂🌳🎋💚🥗🥀🌸',
        'love' : '💟💓💗😍😻💝🤟💌💕',
        'fruit' : '🍎🍏🍍🥭🍋🍊🥥🍇🍉🍈🍓🍌🍒🍅',
        'chaotic' : '😇🤗😌🙌😃😁🤭😮‍💨🙄😔🙏😆🥳🏇👉👈🥳😠😤😩✨🤡🔥🎉✊👌💅🤙🤸🧚🧘💃🌈🍊🍻🔪🪓🤮',
    }
    # customize emoji set 
    emoji_custom_status = input('Do you want to set up your own emoji list? (Y/N) ')
    if emoji_custom_status == 'Y': 
        dict_key = input('Enter emoji list name: ')
        dict_value = input('Enter desired emojis: ')
        emo_theme[dict_key] = dict_value 
    else: 
        print('You may choose from one of our existing themes.')
        print('We currently have: sparkle, hot, cool, plant, love, fruit, chaotic.')

    # getting emoji theme of choice
    key = input('Enter emoji theme of choice: ').strip()
    if key not in emo_theme.keys(): 
        print('This theme has not been available yet. Default is chosen: sparkle.')
        chosen_theme = emo_theme['sparkle']
    else: 
        chosen_theme = emo_theme[key]
        print(f'You have chosen {key} emoji set.')

    # converting to fairytext 
    original_text = input('Enter your boring text: ')
    original_list = original_text.split()
    fairy_text_list = []
    for i in range(0, len(original_list)):
        rand_index = random.randint(0, len(chosen_theme) - 1)
        fairy_text_list.append(original_list[i])
        fairy_text_list.append(chosen_theme[rand_index])
    fairy_text = ''.join(fairy_text_list)
    print(f"Here's your fairytext: {fairy_text}")
    
    # copy to clipboard
    print("Copy to clipboard?")
    copy_consent = input()
    if copy_consent == 'Y':
        pyperclip.copy(fairy_text)
        print("Message copied to clipboard.")
    else: 
        print("Message not copied to clipboard.")

fairy_text_editor()