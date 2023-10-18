.class public final enum Lcom/google/android/systemui/elmyra/ElmyraEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_PRIMED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_RELEASED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_TRIGGERED_AP_SUSPENDED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_TRIGGERED_SCREEN_OFF:Lcom/google/android/systemui/elmyra/ElmyraEvent;

.field public static final enum ELMYRA_TRIGGERED_SCREEN_ON:Lcom/google/android/systemui/elmyra/ElmyraEvent;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const/4 v1, 0x0

    const/16 v2, 0x22f

    const-string v3, "ELMYRA_PRIMED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_PRIMED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v1, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const/4 v2, 0x1

    const/16 v3, 0x230

    const-string v4, "ELMYRA_RELEASED"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_RELEASED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v2, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const/4 v3, 0x2

    const/16 v4, 0x231

    const-string v5, "ELMYRA_TRIGGERED_AP_SUSPENDED"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_AP_SUSPENDED:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v3, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const/4 v4, 0x3

    const/16 v5, 0x23f

    const-string v6, "ELMYRA_TRIGGERED_SCREEN_OFF"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_OFF:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    new-instance v4, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    const/4 v5, 0x4

    const/16 v6, 0x240

    const-string v7, "ELMYRA_TRIGGERED_SCREEN_ON"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/systemui/elmyra/ElmyraEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/elmyra/ElmyraEvent;->ELMYRA_TRIGGERED_SCREEN_ON:Lcom/google/android/systemui/elmyra/ElmyraEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/systemui/elmyra/ElmyraEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->$VALUES:[Lcom/google/android/systemui/elmyra/ElmyraEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/elmyra/ElmyraEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/ElmyraEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/elmyra/ElmyraEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->$VALUES:[Lcom/google/android/systemui/elmyra/ElmyraEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/elmyra/ElmyraEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/elmyra/ElmyraEvent;->id:I

    return p0
.end method
