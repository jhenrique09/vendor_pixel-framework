.class public final Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $listener:Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

.field public final synthetic $tileSpec:Ljava/lang/String;

.field public final synthetic this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;Ljava/lang/String;Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    iput-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;->$tileSpec:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;->$listener:Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    iget-object v1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;->$tileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListener$1;->$listener:Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->getTile(Ljava/lang/String;Z)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/google/android/systemui/qs/launcher/TileState;

    invoke-direct {v0}, Lcom/google/android/systemui/qs/launcher/TileState;-><init>()V

    iput-boolean v2, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mUnSupported:Z

    iput-object v1, v0, Lcom/google/android/systemui/qs/launcher/TileState;->mTileSpec:Ljava/lang/CharSequence;

    check-cast p0, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub$Proxy;->onTileUpdated(Lcom/google/android/systemui/qs/launcher/TileState;)V

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;

    iget-object v5, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    invoke-direct {v4, v1, v5, p0}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$addTileListenerInternal$callback$1;-><init>(Ljava/lang/String;Lcom/google/android/systemui/qs/launcher/LauncherTileService;Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;)V

    iget-object p0, v5, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v5, v5, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    invoke-interface {v5, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    :goto_1
    return-void
.end method
