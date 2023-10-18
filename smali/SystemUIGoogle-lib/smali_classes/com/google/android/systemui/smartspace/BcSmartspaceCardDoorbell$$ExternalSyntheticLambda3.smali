.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;

    check-cast p1, Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->mUriToDrawable:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
