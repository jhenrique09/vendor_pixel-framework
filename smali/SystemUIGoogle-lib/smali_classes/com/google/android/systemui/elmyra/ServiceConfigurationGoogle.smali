.class public final Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mActions:Ljava/util/List;

.field public final mFeedbackEffects:Ljava/util/List;

.field public final mGates:Ljava/util/List;

.field public final mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/systemui/elmyra/sensors/GestureSensor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mActions:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mFeedbackEffects:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGates:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    return-void
.end method
