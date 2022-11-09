
with source as (

    select * from {{ source('raw_salesforce', 'network_member_group') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        assignment_status,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        network_id,
        parent_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
