<?php

class Settingadmin extends MY_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function create_xml() {
        $doc = new DOMDocument();
        $link = $_SERVER['DOCUMENT_ROOT'].ROT_DIR.'setting.xml';
        $doc->load($link);
        $doc->encoding= 'utf-8';
        $featuredde1 = $doc->getElementsByTagName('root');
        foreach ($featuredde1 as $node) {
            $node->parentNode->removeChild($node);
        }
        $last = $doc->saveXML();
        file_put_contents($link, $last);
        $root = $doc->createElement ('root');
        $doc->appendChild($root); 

       
        //$xml->save('php://output'); // document has root-node now
        $root->appendChild($doc->createTextNode("\n  "));
        $root->appendChild($doc->createElement('hello', 'world'));
        $root->appendChild($doc->createTextNode("\n  "));
        $root->appendChild($doc->createElement('anwser', '42'));
        $root->appendChild($doc->createTextNode("\n  "));
        $root->appendChild($doc->createElement('danger', 'danger'));
        $root->appendChild($doc->createTextNode("\n"));

//
//        $root = $doc->createElement ('root');
//        $doc->appendChild($root);
//        //
//        $title = $doc->createElement('title');
//        $title_name = $title->appendChild($doc->createElement("title_name"));
//        $title_name->appendChild($doc->createTextNode("Web Marketing"));
//        $node = $doc->importNode($title, true);
//        $doc->appendChild($node);
//        
//        //
//        $author = $doc->createElement('author');
//        $author_name = $author->appendChild($doc->createElement("author_name"));
//        $author_name->appendChild($doc->createTextNode("Web Marketing"));
//        $node_aut = $doc->importNode($author, true);
//        $doc->appendChild($node_aut);
        //
//        $newNode = $doc->createElement('employee');
//        $name = $newNode->appendChild($doc->createElement("name"));
//        $name->appendChild($doc->createTextNode("Quynh Nhu"));
//        $age = $newNode->appendChild($doc->createElement('age'));
//        $age->appendChild($doc->createTextNode('23'));
//        $salary = $newNode->appendChild($doc->createElement('salary'));
//        $salary->appendChild($doc->createTextNode('1000$'));
        
        
        $doc->save($link);
    }

}

?>
