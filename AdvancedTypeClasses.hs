-- we are going to create a new type class
-- there is no inheritance going on here
class Describable a where
    describe :: a -> String

data Currency = USD Double | INR Double

instance Describable Currency where
    describe (USD amount) = "United States Dollars: " ++ (show amount)
    describe (INR amount) = "Indian Rupees: " ++ (show amount)

instance Describable Bool where
    describe True = "this is true"
    describe False = "this is false"

inc :: Int -> Double
inc x = 1.0 + fromIntegral x

-- this is a duplicate of fmap
mycompose1 fn mx = case mx of
    Nothing -> Nothing
    Just val -> Just (fn val)

minc = Just inc

myPure x = Just x

-- this is a duplicate of <*>
mycompose2 mfn mx = case mfn of
    Nothing -> Nothing
    Just fn -> Just $ case mx of
        Nothing -> Nothing
        Just x -> Just (fn x)

myCompose1_1 mfn mx = mycompose2 (myPure mfn) mx

recipr :: Int -> Maybe Double
recipr 0 = Nothing
recipr x = Just $ 1.0 / (fromIntegral x)

pprint :: Double -> Maybe String
pprint x = if x <= 0.0 then Nothing else Just (show x)

mycompose3 fnb1 mx = case mx of
    Nothing -> Nothing
    Just x -> fnb1 x

ndec mx y = fmap (\x -> x - y) mx