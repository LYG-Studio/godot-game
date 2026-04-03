extends Resource

class_name CardResource

enum CardType {ACTION, ITEM, MONSTER}

@export var id: String
@export var name: String
@export var value: int
@export var type: CardType
@export var effect: CardEffectResource
