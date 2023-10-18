.class public final Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$sublistener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$sublistener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/legacy/actions/Action;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$sublistener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/legacy/actions/UserAction;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->updateAvailable()V

    :cond_0
    return-void
.end method
