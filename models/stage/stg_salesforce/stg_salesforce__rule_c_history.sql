
with source as (

    select * from {{ source('raw_salesforce', 'rule_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        active_c,
        advanced_condition_c,
        conditions_met_c,
        created_by_id,
        created_date,
        currency_iso_code,
        error_message_c,
        evaluation_event_c,
        evaluation_order_c,
        external_id_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        object_c,
        owner_id,
        postfix_condition_c,
        score_change_c,
        system_modstamp,
        type_c

    from source

)

select * from renamed
