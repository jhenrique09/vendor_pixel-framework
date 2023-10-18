.class public final Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/Action;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;Lcom/google/android/systemui/columbus/legacy/actions/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$1$1;->$it:Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$1$1;->$it:Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/Action;

    invoke-interface {v0, p0}, Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;->onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/legacy/actions/Action;)V

    return-void
.end method
