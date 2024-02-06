<?php

namespace DevSolux\LaravelInstall;

use DevSolux\LaravelInstall\Commands\InstallCommands;
use Illuminate\Support\ServiceProvider;

/**
 * Class VercelServiceProvider
 */
class InstallServiceProvider extends ServiceProvider
{
    public function boot()
    {
        // register te install command
        if ($this->app->runningInConsole()) {
            $this->commands([
                InstallCommands::class
            ]);
        }
    }
}
