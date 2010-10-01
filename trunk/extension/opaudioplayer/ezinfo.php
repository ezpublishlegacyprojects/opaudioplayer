<?php
class opAudioPlayerInfo
{
    static function info()
    {
        return array( 'Name' => "opAudioPlayer",
                      'Version' => "v0.1",
                      'Copyright' => "Copyright (C) 2010 O. Portier",
                      'Info_url' => "<a href='http://projects.ez.no/opaudioplayer/'>http://projects.ez.no/opaudioplayer/</a>",
            		  'License' => "GNU General Public License v2.0",
                      'Includes the following third-party software' =>
                            array ( 'Name' => 'SoundManager 2',
                                    'Version' => 'v2.96',
                                    'copyright' => 'Copyright (c) 2007, Scott Schiller (schillmania.com)',
                                    'License' => 'BSD license',
                                    'More information' => "<a href='http://www.schillmania.com'>http://www.schillmania.com</a>" ),
                           array ( 'Name' => 'WordPress Audio Player',
                                    'Version' => '',
                                    'copyright' => 'Copyright (c) 2008 Martin Laine',
                                    'License' => 'Open Source MIT license',
                                    'More information' => "<a href='http://wpaudioplayer.com/'>http://wpaudioplayer.com/</a>" ),
                           array ( 'Name' => 'DewPlayer',
                                    'Version' => '',
                                    'copyright' => 'Copyright (c) 2010 Alsacréations ',
                                    'License' => 'Creative Commons licence',
                                    'More information' => "<a href='http://www.alsacreations.fr/dewplayer-en.html'>http://www.alsacreations.fr/dewplayer-en.html</a>" ),



                    );
    }
}
?>