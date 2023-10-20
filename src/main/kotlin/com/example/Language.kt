package com.example


enum class Language(private val lang: String) {
    TR("Türkçe"),
    EN("English");

    override fun toString(): String {
        return lang
    }

    companion object {
        val defaultLanguage: Language
            /**
             *
             * @return predefined default language
             */
            get() = TR
    }
}