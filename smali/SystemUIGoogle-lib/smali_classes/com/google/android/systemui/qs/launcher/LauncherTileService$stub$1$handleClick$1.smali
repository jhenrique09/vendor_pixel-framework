.class public final Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tileSpec:Ljava/lang/String;

.field public final synthetic this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    iput-object p2, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->$tileSpec:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->$tileSpec:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->getTile(Ljava/lang/String;Z)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v3, v3, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object v2, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v2, v2, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->callbacksMap:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService;

    iget-object v0, v0, Lcom/google/android/systemui/qs/launcher/LauncherTileService;->createdTilesMap:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->$tileSpec:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->getTile(Ljava/lang/String;Z)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    :goto_2
    return-void

    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->this$0:Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;

    iget-object p0, p0, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1$handleClick$1;->$tileSpec:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/google/android/systemui/qs/launcher/LauncherTileService$stub$1;->getTile(Ljava/lang/String;Z)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Landroid/view/View;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
