.class public final Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;
.super Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;
.source ""


# instance fields
.field public final blockingKeys:Ljava/util/Set;

.field public final commandQueue:Ldagger/Lazy;

.field public final commandQueueCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;

.field public final gateDuration:J


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->commandQueue:Ldagger/Lazy;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->gateDuration:J

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->blockingKeys:Ljava/util/Set;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->commandQueue:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->commandQueue:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/legacy/gates/SystemKeyPress$commandQueueCallbacks$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
