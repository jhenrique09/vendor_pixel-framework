.class final Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$settingsObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$settingsObserver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$settingsObserver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "assist_gesture_enabled"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;->isGestureEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;->isOpaEnabled:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->setAvailable(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
