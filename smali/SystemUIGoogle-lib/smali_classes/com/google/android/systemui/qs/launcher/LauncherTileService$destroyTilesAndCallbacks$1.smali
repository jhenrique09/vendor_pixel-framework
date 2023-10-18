.class public final Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v0, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->createdTilesMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v0, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->createdTilesMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v1, v1, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->stub:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    iget-object v4, v3, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v4, v4, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->executor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v2, v6}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;-><init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$destroyTilesAndCallbacks$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
