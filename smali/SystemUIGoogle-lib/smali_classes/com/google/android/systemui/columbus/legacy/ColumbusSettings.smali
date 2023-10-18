.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COLUMBUS_ACTION_URI:Landroid/net/Uri;

.field public static final COLUMBUS_AP_SENSOR_URI:Landroid/net/Uri;

.field public static final COLUMBUS_ENABLED_URI:Landroid/net/Uri;

.field public static final COLUMBUS_LAUNCH_APP_SHORTCUT_URI:Landroid/net/Uri;

.field public static final COLUMBUS_LAUNCH_APP_URI:Landroid/net/Uri;

.field public static final COLUMBUS_LOW_SENSITIVITY_URI:Landroid/net/Uri;

.field public static final COLUMBUS_SILENCE_ALERTS_URI:Landroid/net/Uri;

.field public static final MONITORED_URIS:Ljava/util/Set;


# instance fields
.field public final backupPackage:Ljava/lang/String;

.field public final callback:Lkotlin/jvm/functions/Function1;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final listeners:Ljava/util/Set;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "columbus_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "columbus_ap_sensor"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->COLUMBUS_AP_SENSOR_URI:Landroid/net/Uri;

    const-string v0, "columbus_action"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->COLUMBUS_ACTION_URI:Landroid/net/Uri;

    const-string v0, "columbus_launch_app"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->COLUMBUS_LAUNCH_APP_URI:Landroid/net/Uri;

    const-string v0, "columbus_launch_app_shortcut"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->COLUMBUS_LAUNCH_APP_SHORTCUT_URI:Landroid/net/Uri;

    const-string v0, "columbus_low_sensitivity"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->COLUMBUS_LOW_SENSITIVITY_URI:Landroid/net/Uri;

    const-string v0, "columbus_silence_alerts"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sput-object v7, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->COLUMBUS_SILENCE_ALERTS_URI:Landroid/net/Uri;

    filled-new-array/range {v1 .. v7}, [Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->MONITORED_URIS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->backupPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->listeners:Ljava/util/Set;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$callback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$callback$1;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->callback:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->MONITORED_URIS:Ljava/util/Set;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;

    iget-object v2, p3, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

    iget-object v5, p3, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v6, p3, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, p3, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;

    iget-object p2, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p3, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->userTrackerCallback:Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver$userTrackerCallback$1;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->executor:Ljava/util/concurrent/Executor;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object p2, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p2, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;

    iget-object p3, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p2, p2, Lcom/google/android/systemui/columbus/legacy/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final isColumbusEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "columbus_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final selectedAction()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "columbus_action"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final selectedApp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "columbus_launch_app"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
