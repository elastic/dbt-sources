
with source as (

    select * from {{ source('raw_salesforce', 'recommendation_response') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        action_reference,
        context_record,
        context_record_name,
        context_record_type,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        network_id,
        on_behalf_of,
        on_behalf_of_name,
        on_behalf_of_type,
        recommendation_key,
        recommendation_name,
        recommendation_type,
        response,
        strategy_reference,
        strategy_version,
        system_modstamp

    from source

)

select * from renamed
