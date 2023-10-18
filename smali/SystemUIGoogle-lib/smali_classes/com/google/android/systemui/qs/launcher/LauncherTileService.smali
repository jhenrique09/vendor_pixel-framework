.class public final Lcom/google/android/systemui/qs/launcher/LauncherTileService;
.super Landroid/app/Service;
.source ""


# instance fields
.field public final callbacksMap:Ljava/util/Map;

.field public final createdTilesMap:Ljava/util/Map;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final qsHost:Lcom/android/systemui/qs/QSHost;

.field public final stub:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->qsHost:Lcom/android/systemui/qs/QSHost;

    iput-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->createdTilesMap:Ljava/util/Map;

    new-instance p1, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;-><init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService;)V

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->stub:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->stub:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;-><init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
