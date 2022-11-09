
with source as (

    select * from {{ source('raw_netsuite_sa', 'contract_renewal_action_history') }}

),

renamed as (

    select
        contract_renewal_action_id,
        _fivetran_deleted,
        _fivetran_synced,
        contract_renewal_action_extid,
        contract_renewal_action_name,
        custom_action_handler,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        record_type,
        partition_date

    from source

)

select * from renamed
