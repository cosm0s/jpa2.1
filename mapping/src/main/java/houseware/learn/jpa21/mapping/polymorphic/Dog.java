package houseware.learn.jpa21.mapping.polymorphic;

import javax.persistence.*;

/**
 * @author fphilip@houseware.es
 */
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(discriminatorType = DiscriminatorType.STRING)
@DiscriminatorValue("DOG")
public class Dog extends Animal {
}
