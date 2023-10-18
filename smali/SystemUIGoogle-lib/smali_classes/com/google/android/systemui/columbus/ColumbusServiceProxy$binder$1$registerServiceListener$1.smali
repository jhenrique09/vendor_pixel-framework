.class final Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;->$token:Landroid/os/IBinder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$binder$1$registerServiceListener$1;->$token:Landroid/os/IBinder;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;->token:Landroid/os/IBinder;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/google/android/systemui/columbus/ColumbusServiceProxy$ColumbusServiceListener;->token:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
