.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;
.super Landroid/app/Service;
.source ""


# static fields
.field public static final PACKAGE_DENY_COOLDOWN_MS:J


# instance fields
.field public final allowCertList:Ljava/util/Set;

.field public final allowPackageList:Ljava/util/Set;

.field public final columbusContext:Lcom/google/android/systemui/columbus/ColumbusContext;

.field public final columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

.field public final columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

.field public launcherApps:Landroid/content/pm/LauncherApps;

.field public final mainHandler:Landroid/os/Handler;

.field public final messageDigest:Ljava/security/MessageDigest;

.field public final messenger:Landroid/os/Messenger;

.field public final sysUIContext:Landroid/content/Context;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->PACKAGE_DENY_COOLDOWN_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;Lcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->sysUIContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusStructuredDataManager:Lcom/google/android/systemui/columbus/legacy/ColumbusStructuredDataManager;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusContext;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusContext;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusContext:Lcom/google/android/systemui/columbus/ColumbusContext;

    new-instance p2, Landroid/os/Messenger;

    new-instance p3, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;

    invoke-direct {p3, p0, p7}, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService$IncomingMessageHandler;-><init>(Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;Landroid/os/Looper;)V

    invoke-direct {p2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->messenger:Landroid/os/Messenger;

    const-string p2, "SHA-256"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f030030

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->allowPackageList:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03002f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->allowCertList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->columbusContext:Lcom/google/android/systemui/columbus/ColumbusContext;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusContext;->packageManager:Landroid/content/pm/PackageManager;

    const-string v0, "com.google.android.feature.QUICK_TAP"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/pm/LauncherApps;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/pm/LauncherApps;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusTargetRequestService;->launcherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
