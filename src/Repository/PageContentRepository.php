<?php

namespace App\Repository;

use App\Entity\PageContent;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method PageContent|null find($id, $lockMode = null, $lockVersion = null)
 * @method PageContent|null findOneBy(array $criteria, array $orderBy = null)
 * @method PageContent[]    findAll()
 * @method PageContent[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PageContentRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, PageContent::class);
    }

    public function findPageByName($name)
    {
        return $this->createQueryBuilder('p')
            ->select('p')
            ->where("p.pageName = '$name'")
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    /*
    public function findOneBySomeField($value): ?PageContent
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
