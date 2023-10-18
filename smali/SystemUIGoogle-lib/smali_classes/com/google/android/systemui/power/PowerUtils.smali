.class public abstract Lcom/google/android/systemui/power/PowerUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static createBatterySettingsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static createHelpArticlePendingIntent(ILandroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x4000000

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x50000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, p1, v2, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/systemui/power/PowerUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "HH:mm"

    goto :goto_0

    :cond_0
    const-string p0, "h:m"

    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isFlipendoEnabled(Landroid/content/ContentResolver;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.android.flipendo.api"

    const-string v2, "get_flipendo_state"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "flipendo_state"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "PowerUtils"

    const-string v2, "isFlipendoEnabled() failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;I)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.substName"

    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
