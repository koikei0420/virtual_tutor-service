## Technical design 

### ERD

![ERD](https://i.imgur.com/kTKOrca.png)

[ERD](https://dbdiagram.io/d/5d10646b37c1673299db01d0)

### End-points

#### GET: /question

![/question](https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgR0VUIC9xdWVzdGlvbgoK44Kv44Op44Kk44Ki44Oz44OILT7jgrXjg7zjg5Djg7wgOgAgEgAUCi0-AC4SOiDlhagAWQjphY3liJcgW3tpZCwgYm9keSxjcmVhdGVkX2F0fSwge-KApn0sIOKApl0&s=napkin)

[/question](https://www.websequencediagrams.com/?lz=dGl0bGUgR0VUIC9xdWVzdGlvbgoK44Kv44Op44Kk44Ki44Oz44OILT7jgrXjg7zjg5Djg7wgOgAgEgAUCi0-AC4SOiDlhagAWQjphY3liJcgW3tpZCwgYm9keSxjcmVhdGVkX2F0fSwge-KApn0sIOKApl0&s=napkin)

#### POST /question

![/question](https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgUE9TVCAvcXVlc3Rpb24KCuOCr-ODqeOCpOOCouODs-ODiC0-44K144O844OQ44O8IDoAJA8gYm9keQoKABgMLT4ANBI6IEpTT04ge2lkLAAtBX0&s=napkin)

[/question](https://www.websequencediagrams.com/?lz=dGl0bGUgUE9TVCAvcXVlc3Rpb24KCuOCr-ODqeOCpOOCouODs-ODiC0-44K144O844OQ44O8IDoAJA8gYm9keQoKABgMLT4ANBI6IEpTT04ge2lkLAAtBX0&s=napkin)

#### GET: /question/[id:int]

![/question](https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgR0VUIC9xdWVzdGlvbi9baWQ6aW50XQoK44Kv44Op44Kk44Ki44Oz44OILT7jgrXjg7zjg5Djg7wgOgAgGwAdCi0-ADcSOiAAaAggaWQg5LiL44Gu5YWoYW5zd2Vy44Gu6YWN5YiXIFt7aWQsIGJvZHksIGNyZWF0ZWRfYXR9LCB74oCmfSwg4oCmXQ&s=napkin)

[GET: /question/[id:int]](https://www.websequencediagrams.com/?lz=dGl0bGUgR0VUIC9xdWVzdGlvbi9baWQ6aW50XQoK44Kv44Op44Kk44Ki44Oz44OILT7jgrXjg7zjg5Djg7wgOgAgGwAdCi0-ADcSOiAAaAggaWQg5LiL44Gu5YWoYW5zd2Vy44Gu6YWN5YiXIFt7aWQsIGJvZHksIGNyZWF0ZWRfYXR9LCB74oCmfSwg4oCmXQ&s=napkin)

#### POST: /question/[id:int]/answer

![/question](https://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgUE9TVCAvcXVlc3Rpb24vW2lkOmludF0vYW5zd2VyCgrjgq_jg6njgqTjgqLjg7Pjg4gtPuOCteODvOODkOODvCA6ACQfIGJvZHkKCgAoDC0-AEQSOiBKU09OIAAtB3tpZCwANAV9&s=napkin)

[/question](https://www.websequencediagrams.com/?lz=dGl0bGUgUE9TVCAvcXVlc3Rpb24vW2lkOmludF0vYW5zd2VyCgrjgq_jg6njgqTjgqLjg7Pjg4gtPuOCteODvOODkOODvCA6ACQfIGJvZHkKCgAoDC0-AEQSOiBKU09OIAAtB3tpZCwANAV9&s=napkin)
