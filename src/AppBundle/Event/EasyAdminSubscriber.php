<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 13.02.2018
 * Time: 10:05
 */

namespace AppBundle\Event;


use EasyCorp\Bundle\EasyAdminBundle\Event\EasyAdminEvents;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\EventDispatcher\GenericEvent;

class EasyAdminSubscriber implements EventSubscriberInterface
{

    public static function getSubscribedEvents()
    {
        return [
            EasyAdminEvents::PRE_SEARCH => 'onPreSearch'
        ];
    }

    public function onPreSearch(GenericEvent $event)
    {
        $request = $event->getArgument('request');
        if ( ($request->query->has("dateFor") || $request->query->has("dateUntil")) && $request->query->get("query") === '') {
            $request->query->set("query", true);
        } elseif ($request->query->has("work_time_admin_filter")) {
            $request->query->set("query", true);
        }

    }
}