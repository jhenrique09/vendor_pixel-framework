.class public final Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->blockingKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->gateDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;->blockForMillis(J)V

    :cond_0
    return-void
.end method
