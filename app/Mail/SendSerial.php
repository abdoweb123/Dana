<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class SendSerial extends Mailable
{
    use Queueable, SerializesModels;

    public $serial;
    public $title;
    public $lang;

    public function __construct($serial, $title, $lang)
    {
        $this->serial = $serial;
        $this->title = $title;
        $this->lang = $lang;
    }

    public function build()
    {
        return $this->view('emails.serial');
    }
}
