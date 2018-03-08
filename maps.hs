import qualified Data.Map as Map

phoneBook =
    [
        ("betty","555-2938"),
        ("betty","342-2492"),
        ("bonnie","452-2928"),
        ("patsy","493-2928"),
        ("patsy","943-2929"),
        ("patsy","827-9162"),
        ("lucille","205-2928"),
        ("wendy","939-8282"),
        ("penny","853-2492"),
        ("penny","555-2111")
    ]

buildPhoneBook :: [(String, String)] -> Map.Map String [String]
buildPhoneBook phoneList = Map.fromListWith (++) $ map (\(k, v) -> (k, [v])) phoneList

main = do print result
          where
            myPhonebook = buildPhoneBook phoneBook
            result = Map.lookup "penny" myPhonebook