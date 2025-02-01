from abc import ABC, abstractmethod

class IProduto(ABC):
    @abstractmethod
    def verificar_estoque_baixo(self):
        pass

    @abstractmethod
    def to_dict(self):
        pass

    @abstractmethod
    def __str__(self):
        pass