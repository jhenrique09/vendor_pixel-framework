.class public final Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    sget v0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.systemui.elmyra.IElmyraService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/systemui/elmyra/IElmyraService;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/google/android/systemui/elmyra/IElmyraService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/systemui/elmyra/IElmyraService$Stub$Proxy;

    invoke-direct {v0, p2}, Lcom/google/android/systemui/elmyra/IElmyraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p1, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraService:Lcom/google/android/systemui/elmyra/IElmyraService;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    iget-object p2, p1, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraService:Lcom/google/android/systemui/elmyra/IElmyraService;

    iget-object v0, p1, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mToken:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraServiceListener:Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

    invoke-interface {p2, v0, p1}, Lcom/google/android/systemui/elmyra/IElmyraService;->registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Elmyra/ServiceAction"

    const-string v0, "Error registering listener"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->mElmyraService:Lcom/google/android/systemui/elmyra/IElmyraService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
